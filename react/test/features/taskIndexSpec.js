import TaskContainer from './../../src/containers/TaskContainer';

describe('Task Index', () => {
  let wrapper;

  beforeEach(() => {
    spyOn(global, 'fetch').and.returnValue(
      createResponseFromFixture('tasks/taskIndex')
    );
  });

  afterEach(() => {
    wrapper.unmount();
  });

  describe('visiting the task homepage', () => {
    beforeEach(() => {
      wrapper = mount(
        <TaskContainer />
      );
    });

    it('has task and their information', done => {
      setTimeout(() => {
        let pageText = wrapper.text();
        expect(pageText).toMatch('Take Over the World');
        expect(pageText).toMatch('Eat Some Cheese');
        done();
      },1000)
    });
  });
});
